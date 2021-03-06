// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Ad Exchange Buyer API II (adexchangebuyer2/v2beta1)
// Description:
//   Accesses the latest features for managing Ad Exchange accounts and
//   Real-Time Bidding configurations and auction metrics.
// Documentation:
//   https://developers.google.com/ad-exchange/buyer-rest/guides/client-access/

#import "GTLRAdExchangeBuyerIIObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRAdExchangeBuyerII_Client.entityType
NSString * const kGTLRAdExchangeBuyerII_Client_EntityType_Advertiser = @"ADVERTISER";
NSString * const kGTLRAdExchangeBuyerII_Client_EntityType_Agency = @"AGENCY";
NSString * const kGTLRAdExchangeBuyerII_Client_EntityType_Brand = @"BRAND";
NSString * const kGTLRAdExchangeBuyerII_Client_EntityType_EntityTypeUnspecified = @"ENTITY_TYPE_UNSPECIFIED";

// GTLRAdExchangeBuyerII_Client.role
NSString * const kGTLRAdExchangeBuyerII_Client_Role_ClientDealApprover = @"CLIENT_DEAL_APPROVER";
NSString * const kGTLRAdExchangeBuyerII_Client_Role_ClientDealNegotiator = @"CLIENT_DEAL_NEGOTIATOR";
NSString * const kGTLRAdExchangeBuyerII_Client_Role_ClientDealViewer = @"CLIENT_DEAL_VIEWER";
NSString * const kGTLRAdExchangeBuyerII_Client_Role_ClientRoleUnspecified = @"CLIENT_ROLE_UNSPECIFIED";

// GTLRAdExchangeBuyerII_Client.status
NSString * const kGTLRAdExchangeBuyerII_Client_Status_Active   = @"ACTIVE";
NSString * const kGTLRAdExchangeBuyerII_Client_Status_ClientStatusUnspecified = @"CLIENT_STATUS_UNSPECIFIED";
NSString * const kGTLRAdExchangeBuyerII_Client_Status_Disabled = @"DISABLED";

// GTLRAdExchangeBuyerII_ClientUser.status
NSString * const kGTLRAdExchangeBuyerII_ClientUser_Status_Active = @"ACTIVE";
NSString * const kGTLRAdExchangeBuyerII_ClientUser_Status_Disabled = @"DISABLED";
NSString * const kGTLRAdExchangeBuyerII_ClientUser_Status_Pending = @"PENDING";
NSString * const kGTLRAdExchangeBuyerII_ClientUser_Status_UserStatusUnspecified = @"USER_STATUS_UNSPECIFIED";

// ----------------------------------------------------------------------------
//
//   GTLRAdExchangeBuyerII_Client
//

@implementation GTLRAdExchangeBuyerII_Client
@dynamic clientAccountId, clientName, entityId, entityNameProperty, entityType,
         role, status, visibleToSeller;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"entityNameProperty" : @"entityName" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAdExchangeBuyerII_ClientUser
//

@implementation GTLRAdExchangeBuyerII_ClientUser
@dynamic clientAccountId, email, status, userId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdExchangeBuyerII_ClientUserInvitation
//

@implementation GTLRAdExchangeBuyerII_ClientUserInvitation
@dynamic clientAccountId, email, invitationId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRAdExchangeBuyerII_ListClientsResponse
//

@implementation GTLRAdExchangeBuyerII_ListClientsResponse
@dynamic clients, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"clients" : [GTLRAdExchangeBuyerII_Client class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"clients";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAdExchangeBuyerII_ListClientUserInvitationsResponse
//

@implementation GTLRAdExchangeBuyerII_ListClientUserInvitationsResponse
@dynamic invitations, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"invitations" : [GTLRAdExchangeBuyerII_ClientUserInvitation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"invitations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRAdExchangeBuyerII_ListClientUsersResponse
//

@implementation GTLRAdExchangeBuyerII_ListClientUsersResponse
@dynamic nextPageToken, users;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"users" : [GTLRAdExchangeBuyerII_ClientUser class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"users";
}

@end
